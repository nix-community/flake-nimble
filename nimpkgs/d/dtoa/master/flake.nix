{
  description = ''Port of Milo Yip's fast dtoa() implementation'';
  inputs.src-dtoa-master.flake = false;
  inputs.src-dtoa-master.type = "github";
  inputs.src-dtoa-master.owner = "LemonBoy";
  inputs.src-dtoa-master.repo = "dtoa.nim";
  inputs.src-dtoa-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dtoa-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dtoa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dtoa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}