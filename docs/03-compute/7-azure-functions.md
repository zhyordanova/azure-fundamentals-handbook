# Azure Functions

## Definition

Azure Functions is a serverless compute service that allows developers to execute code without provisioning or managing servers.

Functions are event-driven, meaning they run only when triggered by a specific event.

Because Microsoft manages the infrastructure, operating system, runtime, and scaling, developers can focus entirely on writing application logic.

## Why Azure Functions Exist

Many applications require small pieces of code to run only when something happens.

Examples include:

- A file is uploaded to Azure Blob Storage.
- A message arrives in an Azure Queue.
- An HTTP request is received.
- A scheduled task runs every night.

Running a dedicated virtual machine for these scenarios would be inefficient and expensive.

Azure Functions execute code only when needed.

## Characteristics

Azure Functions provide:

- Serverless compute
- Event-driven execution
- Automatic scaling capabilities
- Multiple hosting options
- Integration with many Azure services
- Minimal server management

Consumption-based hosting plans can dynamically scale and charge based on resource usage and execution.

## Common Triggers

Azure Functions can be triggered by many Azure services, including:

- HTTP requests
- Azure Blob Storage
- Azure Queue Storage
- Azure Event Grid
- Azure Service Bus
- Timer schedules

Each trigger starts the function automatically when the configured event occurs.

## Typical Use Cases

Azure Functions are commonly used for:

- Image processing
- File processing
- Background tasks
- API endpoints
- Workflow automation
- Integration between Azure services

## Customer Responsibilities

When using Azure Functions, the customer is responsible for:

- Function code
- Configuration
- Business logic

Microsoft manages:

- Infrastructure
- Operating system
- Runtime
- Scaling
- Security patching

## Decision Factors

Choose Azure Functions when:

- execution is event-driven
- code should run in response to a trigger
- the workload consists of focused functions or actions
- minimizing server and infrastructure management is important

Choose App Service when the requirement is to host a complete web application or API continuously. Choose a Virtual Machine when operating-system or server-level control is required.

> **Event → Code → Azure Functions**

## Microsoft Trigger Words

If a question contains words such as:

- serverless
- execute code
- event-driven
- trigger
- Blob Storage
- Queue
- no server management

Think:

> Azure Functions

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service executes code in a serverless environment?
- Which Azure service is event-driven?
- Which Azure service runs code without managing servers?
- Which Azure service automatically executes code when a Blob is uploaded?

## Common Mistakes

❌ Thinking Azure Functions host complete web applications.

Azure Functions execute individual pieces of code.

For complete web applications, Azure App Service is usually the better choice.

❌ Thinking Azure Functions require virtual machines.

Azure Functions are fully managed by Microsoft.

Customers do not provision or manage servers.

## Compare With

| Azure Functions | Azure App Service |
|-----------------|-------------------|
| Serverless | PaaS |
| Executes individual functions | Hosts complete web applications |
| Event-driven | Continuously running application |
| Automatically scales per execution | Hosts the application continuously |

## Exam Reasoning

Ask:

> "Am I hosting an application or executing code in response to an event?"

If the requirement is:

- host a complete web application or API;

→ **Azure App Service**

If the requirement is:

- execute code when an event occurs;
- process a queue message;
- react to a Blob upload;
- run scheduled code;

→ **Azure Functions**

The strongest clue is:

> **event-driven serverless code**