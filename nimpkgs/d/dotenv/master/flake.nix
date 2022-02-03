{
  description = ''Loads environment variables from `.env`.'';
  inputs.src-dotenv-master.flake = false;
  inputs.src-dotenv-master.type = "github";
  inputs.src-dotenv-master.owner = "euantorano";
  inputs.src-dotenv-master.repo = "dotenv.nim";
  inputs.src-dotenv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dotenv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dotenv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dotenv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}