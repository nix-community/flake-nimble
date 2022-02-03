{
  description = ''Bindings for the IUP widget toolkit'';
  inputs.src-iup-master.flake = false;
  inputs.src-iup-master.type = "github";
  inputs.src-iup-master.owner = "nim-lang";
  inputs.src-iup-master.repo = "iup";
  inputs.src-iup-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-iup-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iup-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-iup-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}