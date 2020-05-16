import ChoiceNode from './ChoiceNode'

const root = new ChoiceNode('blah blah blah hello', 0);
root.children.push(new ChoiceNode("option 1 <3", 1));
root.children.push(new ChoiceNode("option 2 </3", 0));