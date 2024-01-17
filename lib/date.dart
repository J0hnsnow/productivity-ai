DateTime selectedDate = DateTime.now();
String shortNote = '';

showDatePicker(
  context = context,
  initialDate = selectedDate,
  firstDate = DateTime(2000),
  lastDate = DateTime(2101),
).then((pickedDate) {
  if (pickedDate != null && pickedDate != selectedDate) {
    setState(() {
      selectedDate = pickedDate;
    });
  }
});

TextField(
  onChanged = (value) {
    setState(() {
      shortNote = value;
    });
  },
  decoration = InputDecoration(labelText: 'Short Note'),
),
