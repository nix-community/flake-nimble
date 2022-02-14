{
  description = ''Loads environment variables from `.env`.'';
  inputs.src-dotenv-2_0_1.flake = false;
  inputs.src-dotenv-2_0_1.type = "github";
  inputs.src-dotenv-2_0_1.owner = "euantorano";
  inputs.src-dotenv-2_0_1.repo = "dotenv.nim";
  inputs.src-dotenv-2_0_1.ref = "refs/tags/2.0.1";
  
  outputs = { self, nixpkgs, src-dotenv-2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dotenv-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}