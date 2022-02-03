{
  description = ''Loads environment variables from `.env`.'';
  inputs.src-dotenv-v1_1_1.flake = false;
  inputs.src-dotenv-v1_1_1.type = "github";
  inputs.src-dotenv-v1_1_1.owner = "euantorano";
  inputs.src-dotenv-v1_1_1.repo = "dotenv.nim";
  inputs.src-dotenv-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-dotenv-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dotenv-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}