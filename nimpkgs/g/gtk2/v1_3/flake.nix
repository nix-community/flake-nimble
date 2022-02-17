{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';
  inputs.src-gtk2-v1_3.flake = false;
  inputs.src-gtk2-v1_3.type = "github";
  inputs.src-gtk2-v1_3.owner = "nim-lang";
  inputs.src-gtk2-v1_3.repo = "gtk2";
  inputs.src-gtk2-v1_3.ref = "refs/tags/v1.3";
  
  
  inputs."cairo".type = "github";
  inputs."cairo".owner = "riinr";
  inputs."cairo".repo = "flake-nimble";
  inputs."cairo".ref = "flake-pinning";
  inputs."cairo".dir = "nimpkgs/c/cairo";

  outputs = { self, nixpkgs, src-gtk2-v1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gtk2-v1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gtk2-v1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}