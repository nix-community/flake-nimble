{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
  inputs.src-zfplugs-master.flake = false;
  inputs.src-zfplugs-master.type = "github";
  inputs.src-zfplugs-master.owner = "zendbit";
  inputs.src-zfplugs-master.repo = "nim.zfplugs";
  inputs.src-zfplugs-master.ref = "refs/heads/master";
  
  
  inputs."zfdbms".url = "path:../../../z/zfdbms";
  inputs."zfdbms".type = "github";
  inputs."zfdbms".owner = "riinr";
  inputs."zfdbms".repo = "flake-nimble";
  inputs."zfdbms".ref = "flake-pinning";
  inputs."zfdbms".dir = "nimpkgs/z/zfdbms";

  
  inputs."zfcore".url = "path:../../../z/zfcore";
  inputs."zfcore".type = "github";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".repo = "flake-nimble";
  inputs."zfcore".ref = "flake-pinning";
  inputs."zfcore".dir = "nimpkgs/z/zfcore";

  
  inputs."moustachu".url = "path:../../../m/moustachu";
  inputs."moustachu".type = "github";
  inputs."moustachu".owner = "riinr";
  inputs."moustachu".repo = "flake-nimble";
  inputs."moustachu".ref = "flake-pinning";
  inputs."moustachu".dir = "nimpkgs/m/moustachu";

  outputs = { self, nixpkgs, src-zfplugs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfplugs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}