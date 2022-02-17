{
  description = ''FNV-1 and FNV-1a non-cryptographic hash functions (documentation hosted at: http://ryuk.ooo/nimdocs/fnv/fnv.html)'';
  inputs.src-fnv-master.flake = false;
  inputs.src-fnv-master.type = "gitlab";
  inputs.src-fnv-master.owner = "ryukoposting";
  inputs.src-fnv-master.repo = "nim-fnv";
  inputs.src-fnv-master.ref = "refs/heads/master";
  
  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  outputs = { self, nixpkgs, src-fnv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fnv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fnv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}