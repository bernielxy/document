openssl aes-256-cbc -K $encrypted_1c183dd38b6b_key -iv $encrypted_1c183dd38b6b_iv -in travis_rsa.enc -out travis_rsa -d
chmod 600 travis_rsa
cp travis_rsa ~/.ssh/id_rsa

rsync -avz -e "ssh -o 'StrictHostKeyChecking no' -i ~/.ssh/id_rsa" document/raneto/content ubuntu@118.24.211.230:/home/ubuntu/workplace/ss-doc/content
