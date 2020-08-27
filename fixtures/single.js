fixture `Single Test`
    .page `https://www.google.com/`;

test('singletest', async t => {
    await t
        .typeText('input[name="q"]','BrowserStack\n')
});
