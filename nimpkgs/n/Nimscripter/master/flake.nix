{
  description = ''Easy to use Nim/Nimscript interop, for scripting logic in compiled binaries.'';
  inputs.src-nimscripter-master.flake = false;
  inputs.src-nimscripter-master.type = "github";
  inputs.src-nimscripter-master.owner = "beef331";
  inputs.src-nimscripter-master.repo = "nimscripter";
  inputs.src-nimscripter-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/disruptek/assume".type = "github";
  inputs."https://github.com/disruptek/assume".owner = "riinr";
  inputs."https://github.com/disruptek/assume".repo = "flake-nimble";
  inputs."https://github.com/disruptek/assume".ref = "flake-pinning";
  inputs."https://github.com/disruptek/assume".dir = "nimpkgs/h/https://github.com/disruptek/assume";

  outputs = { self, nixpkgs, src-Nimscripter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Nimscripter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Nimscripter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}