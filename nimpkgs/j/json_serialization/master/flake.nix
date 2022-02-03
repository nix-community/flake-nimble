{
  description = ''Flexible JSON serialization not relying on run-time type information'';
  inputs.src-json_serialization-master.flake = false;
  inputs.src-json_serialization-master.type = "github";
  inputs.src-json_serialization-master.owner = "status-im";
  inputs.src-json_serialization-master.repo = "nim-json-serialization";
  inputs.src-json_serialization-master.ref = "refs/heads/master";
  
  
  inputs."serialization".url = "path:../../../s/serialization";
  inputs."serialization".type = "github";
  inputs."serialization".owner = "riinr";
  inputs."serialization".repo = "flake-nimble";
  inputs."serialization".ref = "flake-pinning";
  inputs."serialization".dir = "nimpkgs/s/serialization";

  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-json_serialization-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-json_serialization-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-json_serialization-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}