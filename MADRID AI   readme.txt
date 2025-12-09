🏛️ MADRID AI
Machine-Assisted Database Refining & Intelligent Designer AI

"An AI Agent to add glory to your Query"

📑 Table of Contents
Overview
User Preferences
System Architecture
Technology Stack
Frontend Structure
Backend Structure
Database Schema
API Endpoints
Dual Optimization Modes
Static Validation Rules
Application Pages
File Structure
Environment Variables
🎯 Overview
MADRID AI is a full-stack SQL intelligence platform designed to optimize, secure, and enhance the performance of SQL queries across various dialects using advanced AI and rule-based analysis.

✨ Core Capabilities
Feature	Description
🚀 SQL Optimization	AI-powered and rule-based query optimization
💬 Text-to-SQL	Natural language to SQL generation with voice input
⚖️ Query Comparator	Side-by-side comparison of multiple SQL queries
🔐 Security Analysis	SQL injection detection with 17 security rules
🧠 Schema Intelligence	Automatic schema inference from queries
📊 ER Diagram Generation	Visual entity-relationship diagrams
📝 DDL Analysis	CREATE TABLE statement parsing
🌍 Multi-language UI	Google Translate integration
📄 PDF Reports	Downloadable analysis reports
📜 Session History	Query history with token tracking
🎙️ Voice Input	Web Speech API for natural language
🌓 Dark/Light Mode	Theme toggle on all pages
🗄️ Supported SQL Dialects
PostgreSQL, MySQL, Oracle SQL, SQL Server, SQLite, IBM DB2

👤 User Preferences
💬 Communication Style
Simple, everyday language with clear explanations
Avoid overly technical jargon where possible
Provide sufficient detail to justify suggestions
🎨 Interface Preferences
Dark/Light mode toggle on all pages
Real-time agent activity visualization
Dual View Mode: Input mode + Analysis mode
Session persistence with query history
Google Translate integration
Responsive design
🏗️ System Architecture
🤖 Multi-Agent Pipeline
MADRID AI uses specialized AI agents that collaborate:

Agent	Role
🎭 Orchestrator	Coordinates all agents, manages workflow
🔍 QueryParser	Tokenizes SQL, extracts components
🛡️ SecurityAuditor	Scans for SQL injection vulnerabilities
📐 IndexArchitect	Analyzes access patterns, recommends indexes
📊 SchemaAnalyzer	Infers table structures from queries
✅ SyntaxChecker	Validates SQL syntax for dialect
💰 CostEstimator	Calculates execution costs
🛠️ Technology Stack
🎨 Frontend
Package	Version	Purpose
React	19.2.0	UI framework
TypeScript	5.6.3	Type safety
Vite	7.1.9	Build tool
Tailwind CSS	4.1.14	Styling
Radix UI	-	Accessible components
Wouter	3.3.5	Routing
TanStack Query	5.60.5	Data fetching
Framer Motion	12.23.24	Animations
Recharts	2.15.4	Visualizations
Lucide React	0.545.0	Icons
jsPDF	3.0.4	PDF generation
html2canvas	1.4.1	Canvas rendering
react-dropzone	14.3.8	File upload
prism-react-renderer	2.4.1	Syntax highlighting
sql-formatter	15.6.10	SQL formatting
sonner	2.0.7	Toast notifications
⚙️ Backend
Package	Version	Purpose
Express	4.21.2	Web framework
TypeScript	5.6.3	Type safety
Drizzle ORM	0.39.1	Database ORM
@neondatabase/serverless	0.10.4	PostgreSQL driver
openai	4.x	Azure OpenAI SDK
drizzle-zod	0.7.0	Schema validation
zod	3.25.76	Runtime validation
express-session	1.18.1	Session management
🌐 External Services
Service	Purpose
OpenAI API	AI optimization and generation (GPT-4o-mini)
Google Translate	Multi-language UI
Neon Database	Serverless PostgreSQL
🖥️ Frontend Structure
📄 Pages
Route	Description
/	Landing: Welcome screen with animations and theme toggle
/welcome	Welcome: Feature overview with navigation cards
/home	Home: Main SQL optimizer and generator
/compare	Compare: Multi-query comparison tool
🧩 Key Components
40+ Radix-based UI components
CodeBlock: Syntax highlighted SQL
AgentLogViewer: Real-time agent logs
ERDiagram: Entity-relationship diagrams
HistorySheet: Query history sidebar
SettingsDialog: Settings modal
IssuesChart: Data visualizations
LanguageSelector: Google Translate
📡 API Client Functions
Function	Purpose
optimizeQuery()	AI-powered optimization
optimizeQueryStatic()	Rule-based optimization
generateQuery()	Text-to-SQL generation
compareQueries()	Multi-query comparison
getHistory()	Fetch session history
🔧 Backend Structure
📁 Server Files
File	Purpose
index.ts	Express server entry point
routes.ts	API route handlers
staticOptimizer.ts	33 validation rules
storage.ts	Database operations
vite.ts	Vite dev server integration
💾 Storage Methods
Method	Purpose
createQueryHistory()	Save optimization result
getQueryHistoryBySession()	Get history by session
getAllQueryHistory()	Get all history entries
getQueryHistoryById()	Get single history item
🗃️ Database Schema
👥 users Table
Column	Type	Description
id	VARCHAR	UUID primary key
username	TEXT	unique
password	TEXT	hashed
📜 query_history Table
Column	Type	Description
id	VARCHAR	UUID primary key
session_id	TEXT	Session identifier
mode	TEXT	optimize/generate/compare
dialect	TEXT	SQL dialect
input_query	TEXT	Original query
output_query	TEXT	Optimized query
score	INTEGER	0-100
execution_time_reduction	TEXT	Time saved
issues	JSONB	Detected issues
agent_logs	JSONB	Agent activity
schema	JSONB	Inferred schema
prompt_tokens	INTEGER	Input tokens
completion_tokens	INTEGER	Output tokens
total_tokens	INTEGER	Total tokens
created_at	TIMESTAMP	Creation time
🔌 API Endpoints
🚀 SQL Optimization
POST /api/optimize (AI-Powered)

Request: query, sessionId, dialect, model, uploadedSchema
Response: optimizedSql, score, issues, agentLogs, tokens
POST /api/optimize/static (Rule-Based)

Request: query, sessionId, dialect
Response: optimizedSql, score, issues, rulesApplied (zero tokens)
💬 Text-to-SQL
POST /api/generate

Request: prompt, sessionId, dialect, model
Response: generatedSql, score, schema, issues
⚖️ Query Comparison
POST /api/compare

Request: queries (array), sessionId
Response: winnerIndex, queries[], generatedOptimizedSql, summary
📜 History
Endpoint	Description
GET /api/history/all?limit=50	Get all history
GET /api/history/:sessionId?limit=50	Get session history
GET /api/history/item/:id	Get single item
⚡ Dual Optimization Modes
🤖 AI-Powered Optimization
Models:

Model	Description
gpt-4o-mini	Default, fast & recommended
gpt-4o	Best quality
gpt-4-turbo	Advanced reasoning
Capabilities:

Semantic understanding
Context-aware suggestions
Schema inference
Natural language explanations
DDL security analysis
⚙️ Static Rule-Based Optimization
Advantages:

No API calls (zero tokens)
Instant results (<100ms)
Deterministic analysis
Works offline
📋 Static Validation Rules
33 validation rules across two categories.

🚀 Performance Rules (16)
#	Rule	Severity
1	SELECT * Detection	⚠️ Warning
2	Missing WHERE Clause	⚠️ Warning
3	Non-SARGable Conditions	⚠️ Warning
4	Leading Wildcard LIKE	⚠️ Warning
5	DISTINCT Overuse	ℹ️ Info
6	Large IN List	⚠️ Warning
7	OR Instead of IN	ℹ️ Info
8	ORDER BY Without LIMIT	ℹ️ Info
9	Nested Subquery	ℹ️ Info
10	LEFT JOIN Filter Placement	⚠️ Warning
11	Join Column Index Check	ℹ️ Info
12	Implicit Type Conversion	⚠️ Warning
13	Multiple Sort Operations	⚠️ Warning
14	Statistics Maintenance	ℹ️ Info
15	Cartesian Product Detection	🔴 Critical
16	GROUP BY Without Aggregate	ℹ️ Info
🔐 Security Rules (17)
#	Rule	Severity
1	Tautological Conditions (1=1)	🔴 Critical
2	UNION Injection	🔴 Critical
3	Stacked Queries	🔴 Critical
4	Suspicious Comments	⚠️ Warning
5	Dynamic Markers	🔴 Critical
6	Dangerous Statements	⚠️ Warning
7	Missing Parameterization	⚠️ Warning
8	Blind SQL Injection (SLEEP, WAITFOR)	🔴 Critical
9	Error-based Injection (EXTRACTVALUE)	🔴 Critical
10	Out-of-Band Injection (LOAD_FILE, XP_CMDSHELL)	🔴 Critical
11	Authentication Bypass	🔴 Critical
12	Encoded Payloads (Hex, CHAR)	🔴 Critical/⚠️ Warning
13	System Table Access (INFORMATION_SCHEMA)	⚠️ Warning
14	Privilege Escalation (GRANT, CREATE USER)	🔴 Critical
15	Second-Order Injection	⚠️ Warning
16	NoSQL Injection ($where, $ne)	🔴 Critical
17	Boolean-based Injection	🔴 Critical
📊 Scoring
Severity	Points
Base Score	100 points
🔴 Critical	-25 points
⚠️ Warning	-10 points
ℹ️ Info	-5 points
Minimum	0
📱 Application Pages
🏠 Landing (/)
Animated welcome screen
MADRID AI branding
Enter button with keyboard support
Dark/Light mode toggle
Version badge
👋 Welcome (/welcome)
SQL_OPTIMIZER card
TEXT_TO_SQL card
QUERY_COMPARATOR card
Back button to landing
🔧 Home (/home)
SQL query editor
Dialect selector (6 dialects)
Mode toggle (AI vs Static)
Model selector (3 GPT models)
Schema upload
Voice input
Results tabs: Optimized, Diff, Issues, Schema, ER Diagram, Logs
PDF download, History, Clear, Settings
⚖️ Compare (/compare)
Multiple SQL input panels
Side-by-side analysis
Winner highlighting
Score comparison
Agent logs
History button
Developed By section
📁 File Structure
madrid-ai/
├── 📂 client/
│   ├── 📂 src/
│   │   ├── 📂 components/ui/
│   │   ├── 📂 hooks/
│   │   ├── 📂 lib/
│   │   ├── 📂 pages/
│   │   ├── 📄 App.tsx
│   │   └── 📄 main.tsx
│   └── 📄 index.html
├── 📂 server/
│   ├── 📄 index.ts
│   ├── 📄 routes.ts
│   ├── 📄 staticOptimizer.ts
│   ├── 📄 storage.ts
│   └── 📄 vite.ts
├── 📂 shared/
│   └── 📄 schema.ts
└── 📄 package.json

🔐 Environment Variables
Variable	Status	Description
DATABASE_URL	Required	PostgreSQL connection
OPENAI_API_KEY	Required	OpenAI API key
PGHOST	Auto	PostgreSQL host
PGPORT	Auto	PostgreSQL port
PGUSER	Auto	PostgreSQL user
PGPASSWORD	Auto	PostgreSQL password
PGDATABASE	Auto	PostgreSQL database
💻 Development Commands
Command	Description
npm run dev	Start development server
npm run build	Build for production
npm start	Start production server
npm run check	Type checking
npm run db:push	Push schema changes
🌟 Additional Features
📄 PDF Reports
Versioned filename: madrid-ai-report-v{version}-{timestamp}.pdf
Includes: Original SQL, Optimized SQL, Score, Issues, Schema
Uses jsPDF and html2canvas
🎙️ Voice Input
Web Speech API integration
Real-time transcription
Microphone toggle
Multiple language support
🌍 Google Translate
Multi-language UI
Protected SQL syntax
Technical terms preserved
📅 Recent Changes (December 2024)
Change	Status
Migrated from Google Gemini to Azure OpenAI (GPT-4o-mini)	✅
Updated frontend model selector to GPT models	✅
Updated all PDF/UI branding to Azure OpenAI	✅
Added 10 new SQL injection rules (17 total)	✅
Added light/dark mode to landing page	✅
Added History button to Query Comparator	✅
Added Developed By section	✅
Enhanced blind SQL injection detection	✅
Added out-of-band injection detection	✅
Added privilege escalation detection	✅
Fixed landing page text alignment	✅
🏆 MADRID AI - Making SQL Optimization Accessible to Everyone
Q-GPT Query Generative Processing Tool v1.0

⚡ Powered by OpenAI ⚡