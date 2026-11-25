/* =========================================================
   IronLog - Mobile-First Dark Theme Stylesheet
   Dirancang untuk penggunaan cepat di gym (bulking & cutting)
   ========================================================= */

:root {
  bg-app: #090d16;
  bg-card: #111827;
  bg-elevated: #1e293b;
  bg-input: #0f172a;
  border-subtle: rgba(148, 163, 184, 0.16);
  border-strong: rgba(148, 163, 184, 0.28);

  text-primary: #f8fafc;
  text-secondary: #94a3b8;
  text-muted: #64748b;

  accent-bulking: #22c55e;
  accent-bulking-soft: rgba(34, 197, 94, 0.14);
  accent-cutting: #f59e0b;
  accent-cutting-soft: rgba(245, 158, 11, 0.14);

  primary: #3b82f6;
  primary-hover: #2563eb;
  danger: #ef4444;
  danger-soft: rgba(239, 68, 68, 0.14);

  radius-sm: 8px;
  radius-md: 12px;
  radius-lg: 16px;
  radius-pill: 999px;

  nav-height: 68px;
  shadow-card: 0 8px 24px rgba(0, 0, 0, 0.28);
}

:before,
:after {
  box-sizing: border-box;
  -webkit-tap-highlight-color: transparent;
}

.html,
body {
  margin: 0;
  padding: 0;
  background-color: var(bg-app);
  color: var(text-primary);
  font-family: -apple-system, BlinkMacSystemFont, "Hasyn UI", Roboto, Inter, Helvetica, Arial, sans-serif;
  font-size: 15px;
  line-height: 1.45;
  overscroll-behavior-y: contain;
}

.hidden {
  display: none !important;
}

/* =========================================================
   App Shell & Header
   ========================================================= */
.app-shell {
  max-width: 560px;
  min-height: 100dvh;
  margin: 0 auto;
  background-color: var(bg-app);
  display: flex;
  flex-direction: column;
  padding-bottom: calc(var(nav-height) + 20px);
}

.app-header {
  position: sticky;
  top: 0;
  z-index: 20;
  background: rgba(15, 23, 42, 0.92);
  backdrop-filter: blur(12px);
  border-bottom: 1px solid var(border-subtle);
  padding: 12px 16px;
}

.header-top {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 8px;
}

.brand {
  display: flex;
  align-items: center;
  gap: 8px;
}

.brand-title {
  font-size: 1.2rem;
  font-weight: 800;
  letter-spacing: -0.02em;
}

.status-badge {
  font-size: 0.7rem;
  font-weight: 600;
  padding: 2px 8px;
  border-radius: var(radius-pill);
  border: 1px solid var(border-subtle);
}

.status-online {
  background: rgba(59, 130, 246, 0.14);
  color: #93c5fd;
}

.status-offline {
  background: rgba(148, 163, 184, 0.16);
  color: #cbd5e1;
}

.goal-pill {
  border: 1px solid transparent;
  border-radius: var(radius-pill);
  padding: 6px 12px;
  font-size: 0.75rem;
  font-weight: 700;
  cursor: pointer;
  transition: transform 0.12s ease, opacity 0.15s ease;
}

.goal-pill:active {
  transform: scale(0.97);
}

.goal-bulking {
  background-color: var(accent-bulking-soft);
  color: #86efac;
  border-color: rgba(34, 197, 94, 0.35);
}

.goal-cutting {
  background-color: var(accent-cutting-soft);
  color: #fcd34d;
  border-color: rgba(245, 158, 11, 0.35);
}

.goal-banner {
  margin: 8px 0 0;
  font-size: 0.78rem;
  color: var(text-secondary);
}

/* =========================================================
   Rest Timer Bar
   ========================================================= */
.timer-bar {
  position: sticky;
  top: 76px;
  z-index: 15;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 8px;
  padding: 10px 16px;
  background: #172554;
  border-bottom: 1px solid rgba(96, 165, 250, 0.3);
}

.timer-info {
  display: flex;
  flex-direction: column;
}

.timer-label {
  font-size: 0.68rem;
  text-transform: uppercase;
  letter-spacing: 0.04em;
  color: #bfdbfe;
}

.timer-clock {
  font-size: 1.25rem;
  font-weight: 800;
  font-variant-numeric: tabular-nums;
  color: #ffffff;
}

.timer-controls {
  display: flex;
  align-items: center;
  gap: 6px;
  flex-wrap: wrap;
}

/* =========================================================
   Main Content & Cards
   ========================================================= */
.app-main {
  flex: 1;
  padding: 14px 16px;
}

.tab-panel {
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.card {
  background-color: var(bg-card);
  border: 1px solid var(border-subtle);
  border-radius: var(radius-lg);
  padding: 14px;
  box-shadow: var(shadow-card);
}

.card-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 10px;
  margin-bottom: 10px;
}

.section-title {
  margin: 0;
  font-size: 1rem;
  font-weight: 700;
}

.field-group {
  margin-bottom: 12px;
}

.field-label {
  display: block;
  font-size: 0.82rem;
  font-weight: 600;
  color: var(text-secondary);
  margin-bottom: 6px;
}

.helper-text {
  margin: 0 0 12px;
  font-size: 0.82rem;
  color: var(text-secondary);
}

.grid-2 {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 12px;
}

/* =========================================================
   Inputs & Stepper Controls
   ========================================================= */
.input-control {
  width: 100%;
  min-height: 44px;
  padding: 10px 12px;
  background-color: var(bg-input);
  color: var(text-primary);
  border: 1px solid var(border-strong);
  border-radius: var(radius-md);
  font-size: 0.95rem;
  outline: none;
  transition: border-color 0.15s ease;
}

.input-control:focus {
  border-color: var(primary);
}

.input-compact {
  width: auto;
  max-width: 190px;
  min-height: 36px;
  padding: 6px 10px;
  font-size: 0.82rem;
}

.text-center {
  text-align: center;
  font-weight: 700;
  font-variant-numeric: tabular-nums;
}

.inline-add-box {
  display: flex;
  gap: 8px;
  margin-top: 10px;
}

.stepper-row {
  display: flex;
  align-items: center;
  gap: 6px;
}

.btn-step {
  width: 44px;
  height: 44px;
  flex-shrink: 0;
  border-radius: var(radius-md);
  border: 1px solid var(border-strong);
  background-color: var(bg-elevated);
  color: var(text-primary);
  font-size: 1.2rem;
  font-weight: 700;
  cursor: pointer;
}

.btn-step:active {
  background-color: var(primary);
}

/* =========================================================
   Reference Box & Live Metrics Preview
   ========================================================= */
.ref-box {
  margin-top: 10px;
  padding: 10px 12px;
  border-radius: var(radius-md);
  background-color: var(bg-input);
  border-left: 3px solid var(primary);
  font-size: 0.82rem;
  display: flex;
  flex-direction: column;
  gap: 2px;
}

.ref-title {
  color: var(text-secondary);
  font-weight: 600;
}

.ref-value {
  color: var(text-primary);
  font-weight: 700;
}

.metrics-preview {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 10px;
  margin-bottom: 12px;
}

.metric-pill {
  background-color: var(bg-input);
  border: 1px solid var(border-subtle);
  border-radius: var(radius-md);
  padding: 8px 12px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.metric-name {
  font-size: 0.76rem;
  color: var(text-secondary);
}

.metric-pill strong {
  font-size: 0.92rem;
  font-variant-numeric: tabular-nums;
  color: #93c5fd;
}

/* =========================================================
   Buttons & Chips
   ========================================================= */
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-height: 44px;
  padding: 10px 16px;
  border-radius: var(radius-md);
  border: 1px solid transparent;
  font-size: 0.9rem;
  font-weight: 700;
  cursor: pointer;
  transition: transform 0.1s ease, background-color 0.15s ease;
}

.btn: active {
  transform: scale(0.98);
}

.btn-block {
  width: 100%;
}

.btn-primary {
  background-color: var(primary);
  color: #ffffff;
}

.btn-primary: hover {
  background-color: var(primary-hover);
}

.btn-secondary {
  background-color: var(bg-elevated);
  color: var(text-primary);
  border-color: var(border-strong);
}

.btn-outline {
  background-color: transparent;
  color: var(text-primary);
  border-color: var(border-strong);
}

.file-btn-label {
  width: 100%;
}

.btn-text {
  background: none;
  border: none;
  color: #60a5fa;
  font-size: 0.82rem;
  font-weight: 700;
  padding: 4px 6px;
  cursor: pointer;
}

.btn-chip {
  padding: 6px 10px;
  border-radius: var(radius-sm);
  border: 1px solid rgba(255, 255, 255, 0.2);
  background: rgba(15, 23, 42, 0.65);
  color: #f8fafc;
  font-size: 0.76rem;
  font-weight: 700;
  cursor: pointer;
}

.btn-chip.btn-accent {
  background: var(primary);
  border-color: var(primary);
}

.stack-actions {
  display: flex;
  flex-direction: column;
  gap: 10px;
}

/* =========================================================
   Today Sets & History Lists
   ========================================================= */
.badge-muted {
  font-size: 0.75rem;
  font-weight: 700;
  color: var(text-secondary);
  background: var(bg-elevated);
  padding: 3px 9px;
  border-radius: var(radius-pill);
}

.set-list {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.set-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 10px;
  padding: 10px 12px;
  background-color: var(bg-input);
  border: 1px solid var(border-subtle);
  border-radius: var(radius-md);
}

.set-main {
  display: flex;
  flex-direction: column;
  gap: 2px;
}

.set-exercise {
  font-weight: 700;
  font-size: 0.9rem;
}

.set-detail {
  font-size: 0.8rem;
  color: var(text-secondary);
  font-variant-numeric: tabular-nums;
}

.set-note {
  font-size: 0.76rem;
  color: #cbd5e1;
  font-style: italic;
}

.btn-delete-set {
  background: var(danger-soft);
  color: #fca5a5;
  border: 1px solid rgba(239, 68, 68, 0.3);
  border-radius: var(radius-sm);
  padding: 6px 10px;
  font-size: 0.75rem;
  font-weight: 700;
  cursor: pointer;
}

.stats-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 8px;
}

.stat-box {
  background-color: var(bg-input);
  border: 1px solid var(border-subtle);
  border-radius: var(radius-md);
  padding: 10px;
  display: flex;
  flex-direction: column;
  gap: 4px;
}

.stat-label {
  font-size: 0.7rem;
  color: var(text-secondary);
}

.stat-value {
  font-size: 0.95rem;
  font-weight: 800;
  font-variant-numeric: tabular-nums;
}

.history-container {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.history-day-group {
  border: 1px solid var(border-subtle);
  border-radius: var(radius-md);
  padding: 10px 12px;
  background-color: var(bg-input);
}

.history-date {
  font-size: 0.82rem;
  font-weight: 800;
  color: #93c5fd;
  margin-bottom: 8px;
  display: flex;
  justify-content: space-between;
}

.empty-state {
  margin: 0;
  padding: 14px 8px;
  text-align: center;
  font-size: 0.84rem;
  color: var(text-muted);
}

/* =========================================================
   Bottom Navigation & Toast
   ========================================================= */
.bottom-nav {
  position: fixed;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 100%;
  max-width: 560px;
  height: var(nav-height);
  background: rgba(15, 23, 42, 0.96);
  backdrop-filter: blur(12px);
  border-top: 1px solid var(border-subtle);
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  z-index: 25;
}

.nav-item {
  background: none;
  border: none;
  color: var(text-secondary);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 3px;
  font-size: 0.72rem;
  font-weight: 700;
  cursor: pointer;
}

.nav-item.active {
  color: #60a5fa;
}

.nav-icon {
  font-size: 1.15rem;
  line-height: 1;
}

.toast {
  position: fixed;
  bottom: calc(var(nav-height) + 14px);
  left: 50%;
  transform: translateX(-50%);
  background: #1e293b;
  color: #f8fafc;
  border: 1px solid var(border-strong);
  padding: 10px 16px;
  border-radius: var(radius-pill);
  font-size: 0.82rem;
  font-weight: 600;
  box-shadow: var(shadow-card);
  z-index: 40;
  max-width: 90%;
  text-align: center;
}
