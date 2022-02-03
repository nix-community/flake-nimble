{
  description = ''High-level nim wrapper for C/C++ parsing'';
  inputs.src-hcparse-master.flake = false;
  inputs.src-hcparse-master.type = "github";
  inputs.src-hcparse-master.owner = "haxscramper";
  inputs.src-hcparse-master.repo = "hcparse";
  inputs.src-hcparse-master.ref = "refs/heads/master";
  
  
  inputs."hnimast".url = "path:../../../h/hnimast";
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";

  
  inputs."htsparse".url = "path:../../../h/htsparse";
  inputs."htsparse".type = "github";
  inputs."htsparse".owner = "riinr";
  inputs."htsparse".repo = "flake-nimble";
  inputs."htsparse".ref = "flake-pinning";
  inputs."htsparse".dir = "nimpkgs/h/htsparse";

  
  inputs."https://github.com/haxscramper/frosty".url = "path:../../../h/https://github.com/haxscramper/frosty";
  inputs."https://github.com/haxscramper/frosty".type = "github";
  inputs."https://github.com/haxscramper/frosty".owner = "riinr";
  inputs."https://github.com/haxscramper/frosty".repo = "flake-nimble";
  inputs."https://github.com/haxscramper/frosty".ref = "flake-pinning";
  inputs."https://github.com/haxscramper/frosty".dir = "nimpkgs/h/https://github.com/haxscramper/frosty";

  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hcparse-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hcparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hcparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}