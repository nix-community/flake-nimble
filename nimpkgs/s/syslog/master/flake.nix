{
  description = ''Syslog module.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-syslog-master.flake = false;
  inputs.src-syslog-master.type = "github";
  inputs.src-syslog-master.owner = "FedericoCeratto";
  inputs.src-syslog-master.repo = "nim-syslog";
  inputs.src-syslog-master.ref = "refs/heads/master";
  
  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  outputs = { self, nixpkgs, flakeNimbleLib, src-syslog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syslog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-syslog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}