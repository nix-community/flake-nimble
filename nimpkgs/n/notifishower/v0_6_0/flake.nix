{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-notifishower-v0_6_0.flake = false;
  inputs.src-notifishower-v0_6_0.type = "github";
  inputs.src-notifishower-v0_6_0.owner = "PMunch";
  inputs.src-notifishower-v0_6_0.repo = "notifishower";
  inputs.src-notifishower-v0_6_0.ref = "refs/tags/v0.6.0";
  
  
  inputs."imlib2".type = "github";
  inputs."imlib2".owner = "riinr";
  inputs."imlib2".repo = "flake-nimble";
  inputs."imlib2".ref = "flake-pinning";
  inputs."imlib2".dir = "nimpkgs/i/imlib2";

  
  inputs."https://github.com/pmunch/x11".type = "github";
  inputs."https://github.com/pmunch/x11".owner = "riinr";
  inputs."https://github.com/pmunch/x11".repo = "flake-nimble";
  inputs."https://github.com/pmunch/x11".ref = "flake-pinning";
  inputs."https://github.com/pmunch/x11".dir = "nimpkgs/h/https://github.com/pmunch/x11";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."kiwi".type = "github";
  inputs."kiwi".owner = "riinr";
  inputs."kiwi".repo = "flake-nimble";
  inputs."kiwi".ref = "flake-pinning";
  inputs."kiwi".dir = "nimpkgs/k/kiwi";

  
  inputs."termstyle".type = "github";
  inputs."termstyle".owner = "riinr";
  inputs."termstyle".repo = "flake-nimble";
  inputs."termstyle".ref = "flake-pinning";
  inputs."termstyle".dir = "nimpkgs/t/termstyle";

  outputs = { self, nixpkgs, flakeNimbleLib, src-notifishower-v0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notifishower-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notifishower-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}