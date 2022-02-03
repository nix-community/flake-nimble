{
  description = ''Bindings to the FFTW library'';
  inputs."fftw3-master".url = "path:./master";
  inputs."fftw3-v0_2_0".url = "path:./v0_2_0";
  inputs."fftw3-v0_2_1".url = "path:./v0_2_1";
  inputs."fftw3-v0_2_2".url = "path:./v0_2_2";
  inputs."fftw3-v0_2_3".url = "path:./v0_2_3";
  inputs."fftw3-v0_2_4".url = "path:./v0_2_4";
  inputs."fftw3-v0_2_5".url = "path:./v0_2_5";
  inputs."fftw3-v0_2_6".url = "path:./v0_2_6";
  inputs."fftw3-v0_2_7".url = "path:./v0_2_7";
  inputs."fftw3-v0_2_8".url = "path:./v0_2_8";
  inputs."fftw3-v0_2_9".url = "path:./v0_2_9";
  inputs."fftw3-v0_3_0".url = "path:./v0_3_0";
  inputs."fftw3-v0_3_1".url = "path:./v0_3_1";
  inputs."fftw3-v0_4_0".url = "path:./v0_4_0";
  inputs."fftw3-v0_4_1".url = "path:./v0_4_1";
  inputs."fftw3-v0_4_2".url = "path:./v0_4_2";
  inputs."fftw3-v0_4_3".url = "path:./v0_4_3";
  inputs."fftw3-v0_4_4".url = "path:./v0_4_4";
  inputs."fftw3-v0_4_5".url = "path:./v0_4_5";
  inputs."fftw3-v0_4_6".url = "path:./v0_4_6";
  inputs."fftw3-v0_4_7".url = "path:./v0_4_7";
  inputs."fftw3-v0_5_0".url = "path:./v0_5_0";
  inputs."fftw3-v0_5_1".url = "path:./v0_5_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}