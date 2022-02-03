{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';
  inputs.src-notifishower-v0_3_0.flake = false;
  inputs.src-notifishower-v0_3_0.type = "github";
  inputs.src-notifishower-v0_3_0.owner = "PMunch";
  inputs.src-notifishower-v0_3_0.repo = "notifishower";
  inputs.src-notifishower-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
  inputs."imlib2".url = "path:../../../i/imlib2";
  inputs."imlib2".type = "github";
  inputs."imlib2".owner = "riinr";
  inputs."imlib2".repo = "flake-nimble";
  inputs."imlib2".ref = "flake-pinning";
  inputs."imlib2".dir = "nimpkgs/i/imlib2";

  
  inputs."https://github.com/pmunch/x11".url = "path:../../../h/https://github.com/pmunch/x11";
  inputs."https://github.com/pmunch/x11".type = "github";
  inputs."https://github.com/pmunch/x11".owner = "riinr";
  inputs."https://github.com/pmunch/x11".repo = "flake-nimble";
  inputs."https://github.com/pmunch/x11".ref = "flake-pinning";
  inputs."https://github.com/pmunch/x11".dir = "nimpkgs/h/https://github.com/pmunch/x11";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."kiwi".url = "path:../../../k/kiwi";
  inputs."kiwi".type = "github";
  inputs."kiwi".owner = "riinr";
  inputs."kiwi".repo = "flake-nimble";
  inputs."kiwi".ref = "flake-pinning";
  inputs."kiwi".dir = "nimpkgs/k/kiwi";

  outputs = { self, nixpkgs, src-notifishower-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notifishower-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notifishower-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}