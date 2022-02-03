{
  description = ''A library that will add useful tools to Nim's arsenal.'';
  inputs.src-extensions-master.flake = false;
  inputs.src-extensions-master.type = "github";
  inputs.src-extensions-master.owner = "jyapayne";
  inputs.src-extensions-master.repo = "nim-extensions";
  inputs.src-extensions-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-extensions-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extensions-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-extensions-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}