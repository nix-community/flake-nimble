{
  description = ''Define enums which values preserve their binary representation upon inserting or reordering'';
  inputs.src-persistent_enums-master.flake = false;
  inputs.src-persistent_enums-master.type = "github";
  inputs.src-persistent_enums-master.owner = "yglukhov";
  inputs.src-persistent_enums-master.repo = "persistent_enums";
  inputs.src-persistent_enums-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-persistent_enums-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-persistent_enums-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-persistent_enums-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}