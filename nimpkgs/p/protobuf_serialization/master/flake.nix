{
  description = ''Protobuf implementation compatible with the nim-serialization framework.'';
  inputs.src-protobuf_serialization-master.flake = false;
  inputs.src-protobuf_serialization-master.type = "github";
  inputs.src-protobuf_serialization-master.owner = "status-im";
  inputs.src-protobuf_serialization-master.repo = "nim-protobuf-serialization";
  inputs.src-protobuf_serialization-master.ref = "refs/heads/master";
  
  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."faststreams".url = "path:../../../f/faststreams";
  inputs."faststreams".type = "github";
  inputs."faststreams".owner = "riinr";
  inputs."faststreams".repo = "flake-nimble";
  inputs."faststreams".ref = "flake-pinning";
  inputs."faststreams".dir = "nimpkgs/f/faststreams";

  
  inputs."serialization".url = "path:../../../s/serialization";
  inputs."serialization".type = "github";
  inputs."serialization".owner = "riinr";
  inputs."serialization".repo = "flake-nimble";
  inputs."serialization".ref = "flake-pinning";
  inputs."serialization".dir = "nimpkgs/s/serialization";

  
  inputs."combparser".url = "path:../../../c/combparser";
  inputs."combparser".type = "github";
  inputs."combparser".owner = "riinr";
  inputs."combparser".repo = "flake-nimble";
  inputs."combparser".ref = "flake-pinning";
  inputs."combparser".dir = "nimpkgs/c/combparser";

  outputs = { self, nixpkgs, src-protobuf_serialization-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-protobuf_serialization-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-protobuf_serialization-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}