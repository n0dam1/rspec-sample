FactoryBot.define do
  factory :article do
    title "遅延評価について"
    body { "#{title}の記事です" }
    status :draft

    trait :published do
      status :published
    end

    trait :long_title do
      title 'とても長いタイトルを持った記事を作る属性'
    end

    trait :test_callback do
      after(:create) do
        p 'コールバックのテスト'
      end
    end
  end
end
