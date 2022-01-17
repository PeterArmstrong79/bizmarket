import express from 'express';
const app = express();

app.get('/', (req, res) => {
	res.status(200).send('ok');
});

const PORT = process.env.PORT || 5000;
app.listen(5000, () => {
	console.log(`Server is running on port ${PORT}`);
});
