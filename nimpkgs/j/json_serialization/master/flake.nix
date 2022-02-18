{
  description = ''Flexible JSON serialization not relying on run-time type information'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-json_serialization-master.flake = false;
  inputs.src-json_serialization-master.type = "github";
  inputs.src-json_serialization-master.owner = "status-im";
  inputs.src-json_serialization-master.repo = "nim-json-serialization";
  inputs.src-json_serialization-master.ref = "refs/heads/master";
  
  
  inputs."serialization".type = "github";
  inputs."serialization".owner = "riinr";
  inputs."serialization".repo = "flake-nimble";
  inputs."serialization".ref = "flake-pinning";
  inputs."serialization".dir = "nimpkgs/s/serialization";

  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, flakeNimbleLib, src-json_serialization-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-json_serialization-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-json_serialization-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}