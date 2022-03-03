{
  description = ''<VS Code Data Swapper> Easily swap between multiple data folders.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-vscds-master.flake = false;
  inputs.src-vscds-master.type = "github";
  inputs.src-vscds-master.owner = "doongjohn";
  inputs.src-vscds-master.repo = "vscds";
  inputs.src-vscds-master.ref = "refs/heads/master";
  inputs.src-vscds-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimlevenshtein".type = "github";
  # inputs."nimlevenshtein".owner = "riinr";
  # inputs."nimlevenshtein".repo = "flake-nimble";
  # inputs."nimlevenshtein".ref = "flake-pinning";
  # inputs."nimlevenshtein".dir = "nimpkgs/n/nimlevenshtein";
  # inputs."nimlevenshtein".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimlevenshtein".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-vscds-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vscds-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vscds-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}