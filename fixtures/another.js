fixture `Another Test`
    .page `https://www.bing.com/`;

test('anothertest', async t => {
    await t
        .typeText('input[name="q"]','BrowserStack\n')
});
