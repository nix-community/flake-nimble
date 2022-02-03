{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
  inputs.src-zfcore-1_0_30.flake = false;
  inputs.src-zfcore-1_0_30.type = "github";
  inputs.src-zfcore-1_0_30.owner = "zendbit";
  inputs.src-zfcore-1_0_30.repo = "nim.zfcore";
  inputs.src-zfcore-1_0_30.ref = "refs/tags/1.0.30";
  
  
  inputs."zfblast".url = "path:../../../z/zfblast";
  inputs."zfblast".type = "github";
  inputs."zfblast".owner = "riinr";
  inputs."zfblast".repo = "flake-nimble";
  inputs."zfblast".ref = "flake-pinning";
  inputs."zfblast".dir = "nimpkgs/z/zfblast";

  
  inputs."uri3".url = "path:../../../u/uri3";
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  
  inputs."stdext".url = "path:../../../s/stdext";
  inputs."stdext".type = "github";
  inputs."stdext".owner = "riinr";
  inputs."stdext".repo = "flake-nimble";
  inputs."stdext".ref = "flake-pinning";
  inputs."stdext".dir = "nimpkgs/s/stdext";

  outputs = { self, nixpkgs, src-zfcore-1_0_30, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-1_0_30;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfcore-1_0_30"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}