{
  description = ''Loads environment variables from `.env`.'';
  inputs.src-dotenv-v1_0_3.flake = false;
  inputs.src-dotenv-v1_0_3.type = "github";
  inputs.src-dotenv-v1_0_3.owner = "euantorano";
  inputs.src-dotenv-v1_0_3.repo = "dotenv.nim";
  inputs.src-dotenv-v1_0_3.ref = "refs/tags/v1.0.3";
  
  outputs = { self, nixpkgs, src-dotenv-v1_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-v1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dotenv-v1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}