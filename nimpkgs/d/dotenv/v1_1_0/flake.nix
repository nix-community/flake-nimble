{
  description = ''Loads environment variables from `.env`.'';
  inputs.src-dotenv-v1_1_0.flake = false;
  inputs.src-dotenv-v1_1_0.type = "github";
  inputs.src-dotenv-v1_1_0.owner = "euantorano";
  inputs.src-dotenv-v1_1_0.repo = "dotenv.nim";
  inputs.src-dotenv-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-dotenv-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dotenv-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}