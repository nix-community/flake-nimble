{
  description = ''Loads environment variables from `.env`.'';
  inputs.src-dotenv-main.flake = false;
  inputs.src-dotenv-main.type = "github";
  inputs.src-dotenv-main.owner = "euantorano";
  inputs.src-dotenv-main.repo = "dotenv.nim";
  inputs.src-dotenv-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-dotenv-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dotenv-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}