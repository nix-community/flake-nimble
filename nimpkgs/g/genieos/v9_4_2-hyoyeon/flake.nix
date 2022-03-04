{
  description = ''Too awesome procs to be included in nimrod.os module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-genieos-v9_4_2-hyoyeon.flake = false;
  inputs.src-genieos-v9_4_2-hyoyeon.type = "github";
  inputs.src-genieos-v9_4_2-hyoyeon.owner = "Araq";
  inputs.src-genieos-v9_4_2-hyoyeon.repo = "genieos";
  inputs.src-genieos-v9_4_2-hyoyeon.ref = "refs/tags/v9.4.2-hyoyeon";
  inputs.src-genieos-v9_4_2-hyoyeon.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-genieos-v9_4_2-hyoyeon, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genieos-v9_4_2-hyoyeon;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-v9_4_2-hyoyeon"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}