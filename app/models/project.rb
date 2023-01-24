class Project < ApplicationRecord
	enum status: {new_project: 0, ongoing: 1 , delayed: 2, paused: 3 , completed: 4}
        enum phase: {design: 0, prototype: 1, roadmap: 2, mvp: 3 , full_build: 4}
        enum category: {ecommerce: 0, sales: 1, marketing:2, erp: 3, healthcare: 4}

    has_many :project_members
end
