from crhelper import CfnResource
import json

helper = CfnResource()

@helper.create
@helper.update
def sum_2_numbers(event, _):
    s = int(event['ResourceProperties']['No1']) + int(event['ResourceProperties']['No2'])
    print(json.dumps(event))
    helper.Data['Sum'] = s
@helper.delete
def no_op(_, __):
    pass

def handler(event, context):
    helper(event, context)