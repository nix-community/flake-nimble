{
  description = ''Wrapper for librsvg, a Scalable Vector Graphics (SVG) rendering library'';
  inputs.src-rsvg-master.flake = false;
  inputs.src-rsvg-master.type = "github";
  inputs.src-rsvg-master.owner = "def-";
  inputs.src-rsvg-master.repo = "rsvg";
  inputs.src-rsvg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rsvg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rsvg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rsvg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}