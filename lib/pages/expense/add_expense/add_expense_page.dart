import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:journal/const/app_color.dart';
import 'package:journal/models/coa.dart';
import 'package:journal/models/payment_method.dart';
import 'package:journal/models/term_of_payment.dart';
import 'package:journal/pages/select_customer/select_customer_page.dart';
import 'package:journal/utils/app_snackbar.dart';
import 'package:journal/utils/formatter/date_formatter.dart';
import 'package:journal/widgets/bottomsheet/app_bottom_sheet.dart';
import 'package:journal/widgets/form_widget.dart';
import 'package:journal/widgets/switch_widget.dart';
import 'package:journal/widgets/text_form_widget.dart';

import 'bloc/add_expense_bloc.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  final _noBiayaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: const Text('Biaya Baru'),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: AppColor.white,
            ),
            onPressed: () {
              // TODO: Add create action
            },
            child: const Text('Buat'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColor.primary,
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  TextFormWidget(
                    icon: Icons.note_outlined,
                    label: 'No. biaya',
                    placeholder: '#Auto generate',
                    controller: _noBiayaController,
                    onChanged: (value) => context
                        .read<AddExpenseBloc>()
                        .add(AddExpenseEvent.updateNoExpense(value)),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SelectCustomerPage();
                            },
                          ),
                        ).then((value) {
                          if (value != null) {
                            context.read<AddExpenseBloc>().add(
                                AddExpenseEvent.updateCustomer(value));
                          }
                        });
                      },
                      child: BlocBuilder<AddExpenseBloc, AddExpenseState>(
                        buildWhen: (previous, current) =>
                            previous.customer != current.customer,
                        builder: (context, state) {
                          return DottedBorder(
                            color: AppColor.white,
                            strokeWidth: 1,
                            dashPattern: const [6],
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(16),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: AppColor.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: state.customer != null
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          state.customer!.name,
                                          style: const TextStyle(
                                            color: AppColor.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.chevron_right_rounded,
                                          color: AppColor.white,
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        const Text(
                                          'Pilih Penerima',
                                          style: TextStyle(
                                            color: AppColor.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'dari Kontak',
                                          style: TextStyle(
                                            color:
                                                AppColor.white.withOpacity(0.6),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<AddExpenseBloc, AddExpenseState>(
                    buildWhen: (previous, current) =>
                        previous.transactionDate != current.transactionDate,
                    builder: (context, state) {
                      return FormWidget(
                        icon: Icons.date_range,
                        label: 'Tgl transaksi',
                        placeholder: 'DD/MM/YYYY',
                        value: DateFormatter.formatDate(state.transactionDate),
                        onTap: () async {
                          showDatePicker(
                            context: context,
                            firstDate: DateTime.now(),
                            currentDate: state.transactionDate,
                            lastDate: DateTime(2045),
                          ).then((value) {
                            if (value != null) {
                              context.read<AddExpenseBloc>().add(
                                  AddExpenseEvent.updateTransactionDate(value));
                            }
                          });
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<AddExpenseBloc, AddExpenseState>(
                    buildWhen: (previous, current) =>
                        previous.canPaylater != current.canPaylater,
                    builder: (context, state) {
                      return Column(
                        children: [
                          SwitchFormWidget(
                            icon: Icons.access_time,
                            label: 'Bayar Nanti',
                            value: state.canPaylater,
                            onChanged: (bool value) => context
                                .read<AddExpenseBloc>()
                                .add(AddExpenseEvent.updateCanPayLater(value)),
                          ),
                          const SizedBox(height: 16),
                          if (state.canPaylater) ...[
                            BlocBuilder<AddExpenseBloc, AddExpenseState>(
                              buildWhen: (previous, current) =>
                                  previous.dueDate != current.dueDate,
                              builder: (context, state) {
                                return FormWidget(
                                  icon: Icons.date_range,
                                  label: 'Tgl jatuh tempo',
                                  placeholder: 'DD/MM/YYYY',
                                  value: state.dueDate == null
                                      ? null
                                      : DateFormatter.formatDate(
                                          state.dueDate!),
                                  onTap: () async {
                                    showDatePicker(
                                      context: context,
                                      firstDate: DateTime.now(),
                                      currentDate: state.dueDate,
                                      lastDate: DateTime(2045),
                                    ).then((value) {
                                      if (value != null) {
                                        context.read<AddExpenseBloc>().add(
                                            AddExpenseEvent.updateDueDate(
                                                value));
                                      }
                                    });
                                  },
                                );
                              },
                            ),
                            const SizedBox(height: 16),
                            BlocBuilder<AddExpenseBloc, AddExpenseState>(
                              buildWhen: (previous, current) =>
                                  previous.termOfPayment !=
                                  current.termOfPayment,
                              builder: (context, state) {
                                return FormWidget(
                                  icon: Icons.list_alt_sharp,
                                  label: 'Syarat Pembayaran',
                                  placeholder: '-',
                                  value: state.termOfPayment?.name,
                                  onTap: () {
                                    AppBottomSheet<TermOfPayment>(
                                      context: context,
                                      title: 'Pilih Syarat Pembayaran',
                                      items: dummyTermOfPayment,
                                      selectedItem: state.termOfPayment,
                                      isShowDivider: true,
                                      itemLabelMapper: (TermOfPayment item) =>
                                          item.name,
                                      onSelected: (item, index) => context
                                          .read<AddExpenseBloc>()
                                          .add(AddExpenseEvent
                                              .updateTermOfPayment(item)),
                                      trailingBuilder: (context, index) {
                                        Color color =
                                            dummyTermOfPayment[index].id ==
                                                    state.termOfPayment?.id
                                                ? AppColor.accent
                                                : AppColor.grey;
                                        return Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              border: Border.all(
                                                color: color,
                                              )),
                                          child: Container(
                                            height: 14,
                                            width: 14,
                                            decoration: BoxDecoration(
                                              color: color,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                          ),
                                        );
                                      },
                                    ).show();
                                  },
                                );
                              },
                            ),
                            const SizedBox(height: 16),
                          ],
                        ],
                      );
                    },
                  ),
                  BlocBuilder<AddExpenseBloc, AddExpenseState>(
                    buildWhen: (previous, current) =>
                        previous.paymentMethod != current.paymentMethod,
                    builder: (context, state) {
                      return FormWidget(
                        icon: Icons.list_alt_sharp,
                        label: 'Metode Pembayaran',
                        placeholder: '-',
                        value: state.paymentMethod?.name,
                        onTap: () {
                          AppBottomSheet<PaymentMethod>(
                            context: context,
                            title: 'Pilih Metode Pembayaran',
                            items: dummyPayments,
                            selectedItem: state.paymentMethod,
                            isShowDivider: true,
                            itemLabelMapper: (PaymentMethod item) => item.name,
                            onSelected: (item, index) => context
                                .read<AddExpenseBloc>()
                                .add(AddExpenseEvent.updatePaymentMethod(item)),
                            trailingBuilder: (context, index) {
                              Color color = dummyPayments[index].id ==
                                      state.paymentMethod?.id
                                  ? AppColor.accent
                                  : AppColor.grey;
                              return Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color: color,
                                    )),
                                child: Container(
                                  height: 14,
                                  width: 14,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                              );
                            },
                          ).show();
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<AddExpenseBloc, AddExpenseState>(
                    buildWhen: (previous, current) =>
                        previous.coA != current.coA,
                    builder: (context, state) {
                      return FormWidget(
                        icon: Icons.list_alt_sharp,
                        label: 'Pilih CoA',
                        placeholder: '-',
                        value: state.coA?.name,
                        onTap: () {
                          AppBottomSheet<CoA>(
                            context: context,
                            title: 'Pilih Akun (CoA)',
                            items: dummyCoA,
                            selectedItem: state.coA,
                            isShowDivider: true,
                            itemLabelMapper: (CoA item) => item.name,
                            onSelected: (item, index) => context
                                .read<AddExpenseBloc>()
                                .add(AddExpenseEvent.updateCoA(item)),
                            trailingBuilder: (context, index) {
                              Color color = dummyCoA[index].id == state.coA?.id
                                  ? AppColor.accent
                                  : AppColor.grey;
                              return Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color: color,
                                    )),
                                child: Container(
                                  height: 14,
                                  width: 14,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                              );
                            },
                          ).show();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Biaya',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: DottedBorder(
                color: AppColor.accent.shade700,
                strokeWidth: 1,
                dashPattern: const [6],
                borderType: BorderType.RRect,
                radius: const Radius.circular(16),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColor.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Pilih biaya',
                        style: TextStyle(
                          color: AppColor.accent.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'dari Daftar Akun',
                        style: TextStyle(
                          color: AppColor.grey.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.grey.shade100,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  const _DetailWidget(
                    label: 'Subtotal',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.grey,
                    ),
                    value: 'Rp. 0,00',
                    valueStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.grey,
                    ),
                  ),
                  const _DetailWidget(
                    isShow: true,
                    showIcon: true,
                    label: 'Jumlah lainnya',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.accent,
                    ),
                    value: 'Rp. 0,00',
                    valueStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.accent,
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 12,
                      bottom: 12,
                    ),
                    child: const _DetailWidget(
                      label: 'Jumlah lainnya',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.accent,
                      ),
                      value: 'Rp. 0,00',
                      valueStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const _DetailWidget(
                    label: 'Sisa tagihan',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    value: 'Rp. 0,00',
                    valueStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _DetailWidget(
                    label: 'Info Lainnya',
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    value: 'Ubah',
                    valueStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.accent.shade700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextButton.icon(
                        onPressed: () {
                          AppSnackbar.warning(
                            context,
                            'Undeveloped. Dummy project',
                          );
                        },
                        icon: const Icon(Icons.add_circle_sharp),
                        label: const Text('Tambahan info lainnya'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _DetailWidget extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle? labelStyle;
  final TextStyle? valueStyle;
  final bool showIcon;
  final bool isShow;
  const _DetailWidget({
    required this.label,
    required this.value,
    this.labelStyle,
    this.valueStyle,
    this.showIcon = false,
    this.isShow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: labelStyle ??
                const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
          ),
          if (showIcon)
            Icon(
              isShow
                  ? Icons.keyboard_arrow_up_rounded
                  : Icons.keyboard_arrow_down_rounded,
              color: AppColor.accent,
            ),
          const Spacer(),
          Text(
            value,
            style: valueStyle ??
                const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
