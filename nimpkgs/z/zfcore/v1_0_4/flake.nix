{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
  inputs.src-zfcore-v1_0_4.flake = false;
  inputs.src-zfcore-v1_0_4.type = "github";
  inputs.src-zfcore-v1_0_4.owner = "zendbit";
  inputs.src-zfcore-v1_0_4.repo = "nim.zfcore";
  inputs.src-zfcore-v1_0_4.ref = "refs/tags/v1.0.4";
  
  
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

  outputs = { self, nixpkgs, src-zfcore-v1_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-v1_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfcore-v1_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}