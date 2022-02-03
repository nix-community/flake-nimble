{
  description = ''A correctly-rounded arbitrary precision decimal floating point arithmetic library'';
  inputs.src-decimal-master.flake = false;
  inputs.src-decimal-master.type = "github";
  inputs.src-decimal-master.owner = "inv2004";
  inputs.src-decimal-master.repo = "nim-decimal";
  inputs.src-decimal-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-decimal-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decimal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-decimal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}