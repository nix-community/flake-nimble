{
  description = ''Convert numbers to words'';
  inputs.src-numToWord-master.flake = false;
  inputs.src-numToWord-master.type = "github";
  inputs.src-numToWord-master.owner = "thisago";
  inputs.src-numToWord-master.repo = "numToWord";
  inputs.src-numToWord-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-numToWord-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numToWord-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-numToWord-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}