{
  description = ''bundle your assets to a nim'';
  inputs.src-nimassets-master.flake = false;
  inputs.src-nimassets-master.type = "github";
  inputs.src-nimassets-master.owner = "xmonader";
  inputs.src-nimassets-master.repo = "nimassets";
  inputs.src-nimassets-master.ref = "refs/heads/master";
  
  
  inputs."zstd".url = "path:../../../z/zstd";
  inputs."zstd".type = "github";
  inputs."zstd".owner = "riinr";
  inputs."zstd".repo = "flake-nimble";
  inputs."zstd".ref = "flake-pinning";
  inputs."zstd".dir = "nimpkgs/z/zstd";

  outputs = { self, nixpkgs, src-nimassets-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimassets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimassets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}