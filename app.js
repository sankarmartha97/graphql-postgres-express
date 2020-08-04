const express = require('express');
const { graphqlHTTP } = require('express-graphql');
const schema = require('./schema');
const app = express();
const cors = require('cors');

app.use(cors());

app.use('/api', graphqlHTTP({
    schema:schema,
    graphiql:true
}))


app.listen(4000, () => {
    console.log('Runing on port 4000');
})