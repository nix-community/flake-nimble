{
  description = ''Loads environment variables from `.env`.'';
  inputs.src-dotenv-v1_0_4.flake = false;
  inputs.src-dotenv-v1_0_4.type = "github";
  inputs.src-dotenv-v1_0_4.owner = "euantorano";
  inputs.src-dotenv-v1_0_4.repo = "dotenv.nim";
  inputs.src-dotenv-v1_0_4.ref = "refs/tags/v1.0.4";
  
  outputs = { self, nixpkgs, src-dotenv-v1_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-v1_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dotenv-v1_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}