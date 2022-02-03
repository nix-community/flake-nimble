{
  description = ''A Rustbox-inspired termbox wrapper'';
  inputs.src-nimbox-master.flake = false;
  inputs.src-nimbox-master.type = "github";
  inputs.src-nimbox-master.owner = "dom96";
  inputs.src-nimbox-master.repo = "nimbox";
  inputs.src-nimbox-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimbox-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}