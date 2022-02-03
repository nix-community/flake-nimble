{
  description = ''xcb bindings'';
  inputs.src-xcb-master.flake = false;
  inputs.src-xcb-master.type = "github";
  inputs.src-xcb-master.owner = "SolitudeSF";
  inputs.src-xcb-master.repo = "xcb";
  inputs.src-xcb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xcb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xcb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xcb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}