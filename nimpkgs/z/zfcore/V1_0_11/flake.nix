{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
  inputs.src-zfcore-V1_0_11.flake = false;
  inputs.src-zfcore-V1_0_11.type = "github";
  inputs.src-zfcore-V1_0_11.owner = "zendbit";
  inputs.src-zfcore-V1_0_11.repo = "nim.zfcore";
  inputs.src-zfcore-V1_0_11.ref = "refs/tags/V1.0.11";
  
  
  inputs."zfblast".type = "github";
  inputs."zfblast".owner = "riinr";
  inputs."zfblast".repo = "flake-nimble";
  inputs."zfblast".ref = "flake-pinning";
  inputs."zfblast".dir = "nimpkgs/z/zfblast";

  
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  outputs = { self, nixpkgs, src-zfcore-V1_0_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-V1_0_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfcore-V1_0_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}