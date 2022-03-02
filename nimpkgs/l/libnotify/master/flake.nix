{
  description = ''Minimalistic libnotify wrapper for desktop notifications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libnotify-master.flake = false;
  inputs.src-libnotify-master.type = "github";
  inputs.src-libnotify-master.owner = "FedericoCeratto";
  inputs.src-libnotify-master.repo = "nim-libnotify";
  inputs.src-libnotify-master.ref = "refs/heads/master";
  inputs.src-libnotify-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."gtk2".type = "github";
  # inputs."gtk2".owner = "riinr";
  # inputs."gtk2".repo = "flake-nimble";
  # inputs."gtk2".ref = "flake-pinning";
  # inputs."gtk2".dir = "nimpkgs/g/gtk2";
  # inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libnotify-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnotify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libnotify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}