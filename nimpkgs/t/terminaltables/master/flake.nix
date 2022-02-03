{
  description = ''terminal tables'';
  inputs.src-terminaltables-master.flake = false;
  inputs.src-terminaltables-master.type = "github";
  inputs.src-terminaltables-master.owner = "xmonader";
  inputs.src-terminaltables-master.repo = "nim-terminaltables";
  inputs.src-terminaltables-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-terminaltables-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-terminaltables-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-terminaltables-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}