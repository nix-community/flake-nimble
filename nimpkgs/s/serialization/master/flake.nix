{
  description = ''A modern and extensible serialization framework for Nim'';
  inputs.src-serialization-master.flake = false;
  inputs.src-serialization-master.type = "github";
  inputs.src-serialization-master.owner = "status-im";
  inputs.src-serialization-master.repo = "nim-serialization";
  inputs.src-serialization-master.ref = "refs/heads/master";
  
  
  inputs."faststreams".url = "path:../../../f/faststreams";
  inputs."faststreams".type = "github";
  inputs."faststreams".owner = "riinr";
  inputs."faststreams".repo = "flake-nimble";
  inputs."faststreams".ref = "flake-pinning";
  inputs."faststreams".dir = "nimpkgs/f/faststreams";

  
  inputs."unittest2".url = "path:../../../u/unittest2";
  inputs."unittest2".type = "github";
  inputs."unittest2".owner = "riinr";
  inputs."unittest2".repo = "flake-nimble";
  inputs."unittest2".ref = "flake-pinning";
  inputs."unittest2".dir = "nimpkgs/u/unittest2";

  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-serialization-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serialization-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serialization-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}