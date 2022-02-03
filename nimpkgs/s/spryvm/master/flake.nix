{
  description = ''Homoiconic dynamic language interpreter in Nim'';
  inputs.src-spryvm-master.flake = false;
  inputs.src-spryvm-master.type = "github";
  inputs.src-spryvm-master.owner = "gokr";
  inputs.src-spryvm-master.repo = "spryvm";
  inputs.src-spryvm-master.ref = "refs/heads/master";
  
  
  inputs."python".url = "path:../../../p/python";
  inputs."python".type = "github";
  inputs."python".owner = "riinr";
  inputs."python".repo = "flake-nimble";
  inputs."python".ref = "flake-pinning";
  inputs."python".dir = "nimpkgs/p/python";

  
  inputs."ui".url = "path:../../../u/ui";
  inputs."ui".type = "github";
  inputs."ui".owner = "riinr";
  inputs."ui".repo = "flake-nimble";
  inputs."ui".ref = "flake-pinning";
  inputs."ui".dir = "nimpkgs/u/ui";

  
  inputs."snappy".url = "path:../../../s/snappy";
  inputs."snappy".type = "github";
  inputs."snappy".owner = "riinr";
  inputs."snappy".repo = "flake-nimble";
  inputs."snappy".ref = "flake-pinning";
  inputs."snappy".dir = "nimpkgs/s/snappy";

  
  inputs."https://github.com/status-im/nim-rocksdb.git".url = "path:../../../h/https://github.com/status-im/nim-rocksdb.git";
  inputs."https://github.com/status-im/nim-rocksdb.git".type = "github";
  inputs."https://github.com/status-im/nim-rocksdb.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-rocksdb.git".repo = "flake-nimble";
  inputs."https://github.com/status-im/nim-rocksdb.git".ref = "flake-pinning";
  inputs."https://github.com/status-im/nim-rocksdb.git".dir = "nimpkgs/h/https://github.com/status-im/nim-rocksdb.git";

  outputs = { self, nixpkgs, src-spryvm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spryvm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spryvm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}