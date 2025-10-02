;; Title: Merit Protocol
;;
;; Summary:
;; A decentralized protocol for issuing, tracking, and verifying educational 
;; achievements and certifications on the Bitcoin blockchain via Stacks. Merit 
;; Protocol enables trustless credential verification, tokenized rewards for 
;; learning milestones, and immutable proof of educational attainment.
;;
;; Description:
;; Merit Protocol revolutionizes educational credentialing by leveraging Bitcoin's
;; security through Stacks Layer 2. The system allows authorized educational 
;; institutions and content providers to issue verifiable achievements, certifications,
;; and skill badges that are permanently recorded on-chain. Students earn tokenized
;; rewards for completing educational milestones, creating a transparent and 
;; tamper-proof academic portfolio. The protocol features multi-tier achievement
;; tracking, automated certification requirements, reward claim mechanisms, and
;; comprehensive user analytics - all secured by Bitcoin's finality.
;;
;; Key Features:
;; - Immutable achievement records secured by Bitcoin
;; - Authorized issuer management with reputation tracking
;; - Tokenized reward distribution for educational milestones
;; - Progressive certification pathways with achievement prerequisites
;; - Comprehensive learner profiles with analytics
;; - Emergency pause mechanism for protocol governance
;; - Fully auditable credential verification system

;; CONSTANTS & CONFIGURATION

(define-constant CONTRACT-OWNER tx-sender)
(define-constant MAX-ACHIEVEMENT-NAME-LENGTH u100)
(define-constant MAX-DESCRIPTION-LENGTH u500)
(define-constant MAX-CATEGORY-LENGTH u50)
(define-constant MIN-REWARD-AMOUNT u1000)
(define-constant MAX-REWARD-AMOUNT u1000000)
(define-constant MAX-ACHIEVEMENTS-PER-USER u100)
(define-constant MAX-CERTIFICATIONS-PER-USER u50)

;; ERROR CODES

(define-constant ERR-UNAUTHORIZED (err u1001))
(define-constant ERR-INVALID-INPUT (err u1002))
(define-constant ERR-ACHIEVEMENT-NOT-FOUND (err u1003))
(define-constant ERR-USER-NOT-FOUND (err u1004))
(define-constant ERR-REWARD-ALREADY-CLAIMED (err u1005))
(define-constant ERR-INSUFFICIENT-BALANCE (err u1006))
(define-constant ERR-LIMIT-EXCEEDED (err u1007))
(define-constant ERR-CERTIFICATION-NOT-FOUND (err u1008))

;; DATA STRUCTURES

;; Achievement definitions - Core educational milestone templates
(define-map achievement-definitions
  uint
  {
    name: (string-ascii 100),
    description: (string-ascii 500),
    category: (string-ascii 50),
    reward-amount: uint,
    issuer: principal,
    active: bool,
    created-at: uint,
  }
)

;; User achievements - Individual earned milestones
(define-map user-achievements
  {
    user: principal,
    achievement-id: uint,
  }
  {
    earned-at: uint,
    claimed: bool,
    issuer: principal,
  }
)

;; User profiles - Learner portfolio and statistics
(define-map user-profiles
  principal
  {
    total-achievements: uint,
    total-rewards-claimed: uint,
    total-points: uint,
    joined-at: uint,
    last-activity: uint,
  }
)

;; Certifications - Advanced credential definitions
(define-map certifications
  uint
  {
    name: (string-ascii 100),
    description: (string-ascii 500),
    required-achievements-count: uint,
    issuer: principal,
    active: bool,
    created-at: uint,
  }
)