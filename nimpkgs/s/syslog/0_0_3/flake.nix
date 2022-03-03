{
  description = ''Syslog module.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-syslog-0_0_3.flake = false;
  inputs.src-syslog-0_0_3.type = "github";
  inputs.src-syslog-0_0_3.owner = "FedericoCeratto";
  inputs.src-syslog-0_0_3.repo = "nim-syslog";
  inputs.src-syslog-0_0_3.ref = "refs/tags/0.0.3";
  inputs.src-syslog-0_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nake".type = "github";
  # inputs."nake".owner = "riinr";
  # inputs."nake".repo = "flake-nimble";
  # inputs."nake".ref = "flake-pinning";
  # inputs."nake".dir = "nimpkgs/n/nake";
  # inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-syslog-0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syslog-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-syslog-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}