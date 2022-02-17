{
  description = ''A modular GUI toolkit for rapid'';
  inputs.src-rdgui-master.flake = false;
  inputs.src-rdgui-master.type = "github";
  inputs.src-rdgui-master.owner = "liquid600pgm";
  inputs.src-rdgui-master.repo = "rdgui";
  inputs.src-rdgui-master.ref = "refs/heads/master";
  
  
  inputs."rapid".type = "github";
  inputs."rapid".owner = "riinr";
  inputs."rapid".repo = "flake-nimble";
  inputs."rapid".ref = "flake-pinning";
  inputs."rapid".dir = "nimpkgs/r/rapid";

  outputs = { self, nixpkgs, src-rdgui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rdgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rdgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}