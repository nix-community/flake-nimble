{
  description = ''FNV-1 and FNV-1a non-cryptographic hash functions (documentation hosted at: http://ryuk.ooo/nimdocs/fnv/fnv.html)'';
  inputs.src-fnv-0_1_0.flake = false;
  inputs.src-fnv-0_1_0.type = "gitlab";
  inputs.src-fnv-0_1_0.owner = "ryukoposting";
  inputs.src-fnv-0_1_0.repo = "nim-fnv";
  inputs.src-fnv-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."stint".url = "path:../../../s/stint";
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  outputs = { self, nixpkgs, src-fnv-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fnv-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fnv-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}