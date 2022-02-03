{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';
  inputs.src-notifishower-master.flake = false;
  inputs.src-notifishower-master.type = "github";
  inputs.src-notifishower-master.owner = "PMunch";
  inputs.src-notifishower-master.repo = "notifishower";
  inputs.src-notifishower-master.ref = "refs/heads/master";
  
  
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

  
  inputs."termstyle".url = "path:../../../t/termstyle";
  inputs."termstyle".type = "github";
  inputs."termstyle".owner = "riinr";
  inputs."termstyle".repo = "flake-nimble";
  inputs."termstyle".ref = "flake-pinning";
  inputs."termstyle".dir = "nimpkgs/t/termstyle";

  outputs = { self, nixpkgs, src-notifishower-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notifishower-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-notifishower-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}