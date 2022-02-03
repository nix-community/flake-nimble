{
  description = ''cjson wrapper for Nim'';
  inputs.src-nim_cjson-master.flake = false;
  inputs.src-nim_cjson-master.type = "github";
  inputs.src-nim_cjson-master.owner = "muxueqz";
  inputs.src-nim_cjson-master.repo = "nim_cjson";
  inputs.src-nim_cjson-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nim_cjson-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_cjson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_cjson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}