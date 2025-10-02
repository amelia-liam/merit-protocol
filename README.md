# Merit Protocol

**Merit Protocol** is a decentralized credentialing and reward distribution system built on the **Stacks blockchain**, leveraging **Bitcoin finality** for trustless verification. It enables educational institutions, training providers, and content platforms to issue **verifiable achievements and certifications**, while learners earn **tokenized rewards** for milestone completion.

Merit Protocol creates an **immutable academic portfolio** on-chain, ensuring transparent, tamper-proof credentialing with a fully auditable system for both issuers and learners.

---

## 🌐 System Overview

Merit Protocol provides an **on-chain educational credentialing framework** that balances three key roles:

* **Issuers (Authorized Institutions/Providers):** Create and award achievements or certifications.
* **Learners (Users):** Earn achievements, claim rewards, and build verifiable portfolios.
* **Protocol Owner (Admin):** Governs contract operations, manages issuers, and funds the reward treasury.

Key capabilities include:

* Immutable achievement and certification records secured by Bitcoin.
* Progressive learning pathways with prerequisites and tiered certifications.
* Tokenized incentive system tied to achievement milestones.
* Comprehensive learner analytics with transparent reporting.
* Emergency governance controls for protocol safety.

---

## ⚙️ Contract Architecture

The contract is organized into **six functional modules**:

### 1. **Issuer Management**

* `register-issuer` – Register an educational institution or content provider.
* `deactivate-issuer` – Revoke issuer authorization.

### 2. **Achievement Management**

* `create-achievement` – Define a new educational milestone.
* `award-achievement` – Assign achievements to learners.
* `deactivate-achievement` – Revoke achievement definitions.

### 3. **Certification Management**

* `create-certification` – Define advanced credentials requiring multiple achievements.
* `award-certification` – Grant certifications to learners meeting requirements.
* `deactivate-certification` – Revoke inactive certifications.

### 4. **Reward Distribution**

* `claim-achievement-reward` – Claim tokenized rewards for completed milestones.

### 5. **Governance**

* `emergency-pause` / `resume-operations` – Pause/resume contract activity.
* `fund-contract` / `withdraw-contract-funds` – Manage protocol treasury.

### 6. **Analytics & Queries**

* `get-user-profile` – Fetch a learner’s portfolio and statistics.
* `get-user-report` – Generate comprehensive analytics with global stats.
* `get-achievement` / `get-certification` – Inspect credential definitions.
* `get-issuer-info` – Verify issuer status.
* `get-contract-health` – Protocol status report.

---

## 🗂 Data Structures

The protocol uses **Clarity maps** to manage credentials and state:

* **`achievement-definitions`** – Templates for milestones.
* **`user-achievements`** – Records of earned achievements.
* **`user-profiles`** – Learner stats (achievements, rewards, points).
* **`certifications`** – Advanced credential definitions.
* **`user-certifications`** – Earned certifications.
* **`authorized-issuers`** – Verified institutions/providers.

State variables track aggregate protocol metrics:

* `total-achievements`, `total-certifications`, `total-users`
* `contract-balance` (treasury for rewards)
* `contract-paused` (emergency control flag)

---

## 🔄 Data Flow

### Achievement Lifecycle

1. **Issuer Registration** → Institution added via `register-issuer`.
2. **Achievement Creation** → Issuer defines achievement (`create-achievement`).
3. **Awarding** → Issuer assigns to learner (`award-achievement`).
4. **Reward Claim** → Learner claims incentive (`claim-achievement-reward`).

### Certification Lifecycle

1. **Certification Creation** → Issuer defines credential (`create-certification`).
2. **Eligibility Check** → Learner must meet required achievements.
3. **Awarding** → Issuer grants credential (`award-certification`).

---

## 🛡 Governance & Security

* **Issuer authorization** ensures only verified entities can issue credentials.
* **Emergency pause** halts all operations in case of vulnerability or misuse.
* **Treasury controls** allow the owner to manage reward pool funding.
* **Input validation & limits** prevent abuse (e.g., achievement spam, oversized strings).
* **Immutable records** ensure tamper-proof learner portfolios, secured by Bitcoin finality.

---

## 📊 Example Use Case

1. **University A** registers as an issuer.
2. Defines achievements: *"Blockchain Fundamentals"*, *"Smart Contract Development"*.
3. A student completes *"Blockchain Fundamentals"*, earns the achievement, and claims tokenized rewards.
4. After earning 3 foundational achievements, the student qualifies for *"Certified Blockchain Developer"*, awarded as a certification.
5. Student’s portfolio is permanently verifiable on-chain, accessible by employers or other institutions.

---

## 🚀 Conclusion

Merit Protocol introduces a **trustless, tokenized, and immutable credentialing system** for education. By anchoring credentials to Bitcoin via Stacks, it ensures **global, censorship-resistant, and tamper-proof recognition** of learning milestones, enabling the next era of decentralized academic verification.
