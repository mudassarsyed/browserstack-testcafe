import { Selector } from 'testcafe';

fixture `Local fixture`
    .page `http://localhost:8000/`;

test('localtest', async t => {
    await t
        .expect(Selector("title").innerText).eql('Local Server')
});
